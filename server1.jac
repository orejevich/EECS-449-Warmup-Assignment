walker interact {
    can return_message with `root entry {
        report {
            "response": "Hello, world!"
        };
    }
}

walker interact_with_body {
    has name: str;

    can return_message with `root entry {
        report {
            "response": "Hello, " + self.name + "!"
        };
    }
}

walker addition {
    has num1: int;
    has num2: int;

    can return_message with `root entry {
        report{
            "sum": self.num1 + self.num2 
        };
    }
}

walker count_letters {
    has str1: str;

    can return_message with `root entry {
        report{
            "length": len(self.str1)
        };
    }
}