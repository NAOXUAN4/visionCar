#include <stdio.h>
#include <stdlib.h>

#include "kernel_smooth.h"

// 结构体用于存储值及其出现次数
typedef struct {
    uint8 value;
    uint8 count;
} ValueCount;

void find_mode(const uint16 *data, uint8 start, uint8 end, uint16 *mode) {
    ValueCount counts[9] = {{0, 0}};  // 假设方向值范围为 1~8
    
    // 统计每个值的出现次数
    for (int i = start; i <= end; i++) {
        uint8 val = data[i];
        counts[val].value = val;
        counts[val].count++;
    }
    
    // 找到出现次数最多的值
    uint8 max_count = 0;
    for (int i = 1; i <= 8; i++) {
        if (counts[i].count > max_count) {
            max_count = counts[i].count;
            *mode = counts[i].value;
        }
    }
}

void mode_convolve(uint16 *input, uint16 *output, uint8 length) {
    for (int i = 0; i < length; i++) {
        int start = i - KERNEL_SIZE / 2;
        int end = i + KERNEL_SIZE / 2;
        
        // 确保索引不越界
        if (start < 0) start = 0;
        if (end >= length) end = length - 1;
        
        uint16 mode;
        find_mode(input, start, end, &mode);
        output[i] = mode;
    }
}

// int main() {
//     int directions[] = {4, 4, 4, 4, 4, 4, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
//                          1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 3, 3, 3,
//                           3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 5, 4, 5, 5, 5,
//                            5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
//                             5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 3, 3, 4, 3, 3, 3, 3, 4,
//                              4, 3, 4, 3, 4, 3, 4, 3, 4, 3};
//     int length = sizeof(directions) / sizeof(directions[0]);
//     int smoothed_directions[length];

//     mode_convolve(directions, smoothed_directions, length);
//     mode_convolve(smoothed_directions, smoothed_directions, length);
//     mode_convolve(smoothed_directions, smoothed_directions, length);
    
    


//     for (int i = 0; i < length; i++) {
//         printf("%d ", smoothed_directions[i]);
//     }

//     return 0;
// }