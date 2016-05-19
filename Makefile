VERSION = 1.2-5.2.0.10002

all:

install:
	mkdir -pv $(DESTDIR)/etc/OpenCL/vendors
	mkdir -pv $(DESTDIR)/usr/lib/intel/opencl-$(VERSION)/doc
	mkdir -pv $(DESTDIR)/usr/lib/intel/opencl-$(VERSION)/etc
	mkdir -pv $(DESTDIR)/usr/lib/intel/opencl-$(VERSION)/lib64
	install -v -m 0644 src/doc/* $(DESTDIR)/usr/lib/intel/opencl-$(VERSION)/doc
	install -v -m 0644 src/etc/* $(DESTDIR)/usr/lib/intel/opencl-$(VERSION)/etc	
	install -v -m 0644 src/lib64/* $(DESTDIR)/usr/lib/intel/opencl-$(VERSION)/lib64
	ln -s /usr/lib/intel/opencl-$(VERSION)/etc/intel64.icd $(DESTDIR)/etc/OpenCL/vendors/intel64.icd
