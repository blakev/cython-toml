
cdef class _Source:
    def __init__(self, str s):
        self.s = s
        self.pos = (int 1, int 1)



cdef str _load(str s):
    s = s.replace('\r\n', '\n')

    root = {}
    tables = {}
    scope = root
    ast = _p_toml(s)


cpdef str load(str s):
    return _load(s)




