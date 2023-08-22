__attribute__((export_name("memcpy")))
void memcpy_test(void* mem_dst, void* mem_src) {
    __builtin_memcpy(mem_dst, mem_src, 128);
}

__attribute__((export_name("memset")))
void memset_test(void* mem_src) {
    __builtin_memset(mem_src, 0, 128);
}
