package org.sitefilm.contentservice.configutation;


import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;
import java.time.Duration;

@Converter(autoApply = true)
public class DurationConverter implements AttributeConverter<Duration, String> {

    @Override
    public String convertToDatabaseColumn(Duration duration) {
        if (duration == null) {
            return null;
        }
        long seconds = duration.getSeconds();
        long absSeconds = Math.abs(seconds);
        String positive = String.format(
                "%d:%02d",
                absSeconds / 3600,
                (absSeconds % 3600) / 60
        );
        return (seconds < 0 ? "-" : "") + positive;
    }

    @Override
    public Duration convertToEntityAttribute(String dbData) {
        if (dbData == null || dbData.isEmpty()) {
            return null;
        }

        boolean negative = dbData.startsWith("-");
        String data = negative ? dbData.substring(1) : dbData;

        String[] parts = data.split(":");
        if (parts.length != 2) {
            throw new IllegalArgumentException("Invalid duration format: " + dbData);
        }

        long hours = Long.parseLong(parts[0]);
        long minutes = Long.parseLong(parts[1]);

        long totalSeconds = hours * 3600 + minutes * 60;

        return Duration.ofSeconds(negative ? -totalSeconds : totalSeconds);
    }
}

