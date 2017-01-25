# Make the array [1, 12, 144, 1728, 20736, 248832, 2985984, 35831808, 429981696]

RANGE = 8 # If you know you're not gonna change it, you can make it a constant.
EXP = 12
a = []

RANGE.times { |i| a << EXP ** i }
puts a

# Mentally unrolling a loop
# i | element
# 0 | 12 ** 0 --> 1
# 1 | 12 ** 1 --> 12
# 2 | 12 ** 2 --> 12 * 12 --> 144
# 3 | 12 ** 3 --> 12 * 12 * 12 --> 1728
