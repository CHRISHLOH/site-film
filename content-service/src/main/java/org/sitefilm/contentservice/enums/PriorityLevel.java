package org.sitefilm.contentservice.enums;

import lombok.Getter;

@Getter
public enum PriorityLevel {
    PRIORITY_1(1),
    PRIORITY_2(2),
    PRIORITY_3(3),
    PRIORITY_4(4),
    PRIORITY_5(5),
    PRIORITY_6(6),
    PRIORITY_7(7),
    PRIORITY_8(8),
    PRIORITY_9(9),
    PRIORITY_10(10);

    private final int value;

    PriorityLevel(int value) {
        this.value = value;
    }

}
