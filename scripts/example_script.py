import emoji
import numpy as np
from ilsadvbisnvavojebaij.math import scalars as scalar_math
from ilsadvbisnvavojebaij.math import vectors as vector_math


def main():
    info_em = emoji.emojize(":information:")
    s_1 = 3
    s_2 = 7
    print(f"{info_em} Scalar math: {s_1} + {s_2} = {scalar_math.add(s_1, s_2)}")
    print(f"{info_em} Scalar math: {s_1} - {s_2} = {scalar_math.subtract(s_1, s_2)}")
    print(f"{info_em} Scalar math: {s_1} * {s_2} = {scalar_math.multiply(s_1, s_2)}")
    print(f"{info_em} Scalar math: {s_1} / {s_2} = {scalar_math.divide(s_1, s_2)}")
    print(" ")
    v_1 = np.array([1, 2, 3])
    v_2 = np.array([4, 5, -3])
    print(f"{info_em} Vector math: {v_1} + {v_2} = {vector_math.add(v_1, v_2)}")
    print(f"{info_em} Vector math: {v_1} - {v_2} = {vector_math.subtract(v_1, v_2)}")
    print(f"{info_em} Vector math: {v_1} * {v_2} = {vector_math.multiply(v_1, v_2)}")
    print(f"{info_em} Vector math: {v_1} / {v_2} = {vector_math.divide(v_1, v_2)}")
    print(f"{info_em} Vector math: {v_1} . {v_2} = {vector_math.dot_prod(v_1, v_2)}")
    return


if __name__ == "__main__":
    main()
