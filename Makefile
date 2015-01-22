CWD := $(shell pwd)

SDIR := $(CWD)
#LDIR := /usr/local/cuda/lib64/
#IDIR := /opt/opencl-headers/include/  
LDIR := /usr/local/cuda-7.0/lib64/
IDIR := /usr/local/cuda-7.0/include/

CC := g++
CFLAGS += -I$(IDIR) -std=c++11  
#-I/usr/local/cuda/include/CL
LDFLAGS += -L$(LDIR) -lOpenCL
DEPS := $(wildcard $(SDIR)/*.h)

SFILES := $(wildcard $(SDIR)/*.cpp)
SLIST := $(SFILES:%.cpp=%)
SOBJS := $(SLIST:%=%.o)

TARGET := cnn2

all: $(TARGET)


cnn2: $(SOBJS)
	$(CC) $(CFLAGS) $^ -o $@ $(LDFLAGS)


define genobj
$1.o: $1.cpp $(DEPS)
	$(CC) $(CFLAGS) -c $$< -o $$@
endef

$(foreach m, $(SLIST), $(eval $(call genobj, $(m))))

.PHONY: clean

clean: 
	rm -rf $(TARGET) $(SOBJS)

#	scl enable devtoolset-1.1 bash
