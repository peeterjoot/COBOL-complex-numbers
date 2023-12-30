ALL += mult
ALL += mymult
all : $(ALL)

% : %.cc
	$(CXX) -g -o $@ $^

clean:
	rm -f $(ALL)
