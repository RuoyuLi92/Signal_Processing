import numpy as np

def scaled_fft_db(x):
    """ ASSIGNMENT 1:
        a) Compute a 512-point Hann window and use it to weigh the input data.
        b) Compute the DFT of the weighed input, take the magnitude in dBs and
        normalize so that the maximum value is 96dB.
        c) Return the first 257 values of the normalized spectrum

        Arguments:
        x: 512-point input buffer.

        Returns:
        first 257 points of the normalized spectrum, in dBs
    """

    # Your code goes here
    
    # The size of signal
    N = 512
    
    # Create the normalized hanning window
    window = np.hanning(N)
    window_nor = window / np.sqrt(np.dot(window, window))
    # Calculate the windowed signal
    
    x_win = np.zeros(x.shape)
    x_win = np.multiply(x, window_nor)
    
    # Clculate the normalized DFT coefficients
    Y = np.fft.fft(x) / N
    
    # Take the first 257 values and their magnitude
    N_2 = N/2 + 1
    X_k = abs(Y[:N_2])
    
    # Conver the magnitude to dBs
    
    X_k_dB = np.log(X_k)
    X_k_dB[np.where(~np.isfinite(X_k_dB))] = -100.0
    
    MAX_VALUE_DB = np.float(96.0)
    
    max = np.max(X_k_dB)
    max = max - MAX_VALUE_DB
    X_k_dB -= max
    
    return X_k_dB
    
    
    


