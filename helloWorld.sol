contract entity {
    address owner;

    function entity() public { owner = msg.sender; }

    function kill() public { if (msg.sender == owner) selfdestruct(owner); }
}

contract sean is entity {

    string message = "Hello, I am the ghost of Sean Bodie Rose born Febuary 7th, 1996 in Ventura California";

    function speak() public returns (string) {
        return message;
    }
}
