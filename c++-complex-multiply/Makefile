ALL += mult
ALL += mymult
ALL += ga20

all : $(ALL)

% : %.cc
	$(CXX) -g -o $@ $^

clean:
	rm -f $(ALL)
