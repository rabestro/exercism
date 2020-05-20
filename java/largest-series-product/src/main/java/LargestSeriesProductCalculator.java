import java.util.Arrays;

import static java.util.stream.IntStream.rangeClosed;

class LargestSeriesProductCalculator {
    private final int[] digits;

    LargestSeriesProductCalculator(String inputNumber) {
        digits = inputNumber.chars().map(digit -> {
            if (digit < '0' || digit > '9') {
                throw new IllegalArgumentException("String to search may only contain digits.");
            }
            return digit - '0';
        }).toArray();
    }

    long calculateLargestProductForSeriesLength(int numberOfDigits) {
        if (numberOfDigits < 0) {
            throw new IllegalArgumentException("Series length must be non-negative.");
        }
        if (numberOfDigits > digits.length) {
            throw new IllegalArgumentException(
                    "Series length must be less than or equal to the length of the string to search.");
        }
        return rangeClosed(0, digits.length - numberOfDigits)
                .mapToLong(start -> Arrays.stream(digits, start, start + numberOfDigits)
                        .reduce((a, b) -> a * b)
                        .orElse(1))
                .max()
                .orElse(1);
    }

}
