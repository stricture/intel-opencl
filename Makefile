VERSION = 1.2-5.2.0.10002

all:

install:
	mkdir -pv $(DESTDIR)/etc/OpenCL/vendors
	mkdir -pv $(DESTDIR)/etc/ld.so.conf.d
	mkdir -pv $(DESTDIR)/usr/lib/intel/opencl-$(VERSION)/doc
	mkdir -pv $(DESTDIR)/usr/lib/intel/opencl-$(VERSION)/lib64
	install -v -m 0644 src/doc/* $(DESTDIR)/usr/lib/intel/opencl-$(VERSION)/doc
	install -v -m 0644 src/lib64/* $(DESTDIR)/usr/lib/intel/opencl-$(VERSION)/lib64
	install -v -m 0644 src/etc/OpenCL/vendors/intel64.icd $(DESTDIR)/etc/OpenCL/vendors
	install -v -m 0644 src/etc/ld.so.conf.d/intel-opencl.conf $(DESTDIR)/etc/ld.so.conf.d
