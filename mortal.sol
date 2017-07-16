contract mortal {
    address owner;

    modifier onlyowner() {
	    if(owner == msg.sender) {
		    _;
		}
		else {
			throw;
		}
	}

	fuction mortal() {
		owner = masg.sender;
	}

	function kill() onlyowner {
		suicide(owner);
	}
}

