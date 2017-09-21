def read_file(x):
    file_handle = open(x, 'r')
    content = file_handle.read()
    file_handle.close()
    print(content)
