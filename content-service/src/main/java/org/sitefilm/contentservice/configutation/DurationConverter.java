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
        return String.format(
                "%02d:%02d:%02d",
                absSeconds / 3600,
                (absSeconds % 3600) / 60,
                absSeconds % 60
        );
    }

    @Override
    public Duration convertToEntityAttribute(String dbData) {
        if (dbData == null || dbData.isEmpty()) {
            return null;
        }

        // Убираем возможный знак минус для отрицательных значений
        boolean negative = dbData.startsWith("-");
        String data = negative ? dbData.substring(1) : dbData;

        // Разделяем строку по двоеточию
        String[] parts = data.split(":");
        if (parts.length != 3) {
            throw new IllegalArgumentException("Invalid duration format: " + dbData);
        }

        try {
            // Парсим часы, минуты и секунды
            long hours = Long.parseLong(parts[0]);
            long minutes = Long.parseLong(parts[1]);
            long seconds = Long.parseLong(parts[2]);

            // Вычисляем общее количество секунд
            long totalSeconds = hours * 3600 + minutes * 60 + seconds;
            return Duration.ofSeconds(negative ? -totalSeconds : totalSeconds);
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException("Invalid duration format: " + dbData, e);
        }
    }
}
