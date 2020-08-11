#include <stdio.h>
#include <stdlib.h>
#include "Matrix.h"
#define defaultVal 0

struct Matrix
{
    double** matrix; 
    int width;
    int height;
};
typedef struct Matrix Matrix;

ErrorCode matrix_create(PMatrix* matrix, uint32_t height, uint32_t width) {
    PMatrix pm = (PMatrix) malloc(sizeof(Matrix));
    if (pm == NULL) {
        return ERROR_FAIL_ALLOCATE;
    }
    pm->height = height;
    pm->width = width;
    pm->matrix = (double**) malloc(height * sizeof(double*));
    if (pm->matrix == NULL) {
        return ERROR_FAIL_ALLOCATE;
    }
    for (int i = 0; i < height; ++i) {
        pm->matrix[i] = calloc(width, sizeof(double));
        if (pm->matrix[i] == NULL) {
            return ERROR_FAIL_ALLOCATE;
        }
    } 
    *matrix = pm;
}

ErrorCode matrix_copy(PMatrix* result, CPMatrix source) {

}

void matrix_destroy(PMatrix matrix) {
    for (int i = 0; i < matrix->height; ++i) {
        free(matrix->matrix[i]);
    }
    free (matrix->matrix);
    free (matrix);
}


ErrorCode matrix_getHeight(CPMatrix matrix, uint32_t* result) {
    *result = matrix->height;
}

ErrorCode matrix_getWidth(CPMatrix matrix, uint32_t* result) {
    *result = matrix->width;
}

ErrorCode matrix_setValue(PMatrix matrix, uint32_t rowIndex, uint32_t colIndex,
                          double value) {
    matrix->matrix[rowIndex][colIndex] = value;
}

ErrorCode matrix_getValue(CPMatrix matrix, uint32_t rowIndex, uint32_t colIndex,
                          double* value) {
                            
}

ErrorCode matrix_add(PMatrix* result, CPMatrix lhs, CPMatrix rhs) {
    if (lhs->height != rhs->height || lhs->width != rhs->width) {
        return ERROR_ILLEGAL_ACTION;
    }
    PMatrix* new;
    ErrorCode ec = matrix_create(new, lhs->height, lhs->width);
    if (!error_isSuccess(ec)) {
        return ec;
    }
    PMatrix mnew = *new;
    for (int i = 0; i < lhs->height; ++i) {
        for (int j = 0; j < lhs->width; ++j) {
            mnew->matrix[i][j] = lhs->matrix[i][j] + rhs->matrix[i][j];
        }
    }
    *result = mnew;
}

ErrorCode matrix_multiplyMatrices(PMatrix* result, CPMatrix lhs, CPMatrix rhs) {
    PMatrix new = malloc(sizeof(Matrix));

}

ErrorCode matrix_multiplyWithScalar(PMatrix matrix, double scalar) {
    for (int i = 0; i < matrix->height; ++i) {
        for (int j = 0; j < matrix->width; ++j) {
            matrix->matrix[i][j] = matrix->matrix[i][j] * scalar;
        }
    }
}