
# 🔲🔳 CLI base Tic-Tac-Toe

The classic on Command line written in Ruby.

## 📂 File Structure
  

```
.

├── board.rb

├── Gemfile

├── Gemfile.lock

├── main.rb

└── README.md

├── victory_checker.rb

```

  

# 🧭 How to Run This Project
  

## > Prerequisites

  

1.  **Ruby**: Ensure you have Ruby installed on your system. You can download and install Ruby from [the official Ruby website](https://www.ruby-lang.org/en/downloads/).

  

2.  **Bundler**: Bundler is a tool for managing gem dependencies. Install Bundler if it is not already installed:

  

```sh

gem install bundler

```

3.  **Colorize**: Install Colorize gem through Gemfile.

  

```sh

bundle install

```

  

## > Getting Started

  

1.  **Clone the Repository**: If you haven’t already, clone the repository to your local machine:

  

```sh

git clone https://github.com/your-username/your-repository.git

```

  

Replace `your-username` and `your-repository` with the appropriate names.

  

2.  **Navigate to the Project Directory**:

  

```sh

cd your-repository

```

  

3.  **Install Dependencies**: Run Bundler to install the necessary gem dependencies specified in the `Gemfile`:

  

```sh

bundle install

```

  

4.  **Run the Project**: Start the project by executing the main script:

  

```sh

ruby main.rb

```

  

### > Sample Run

  

```

$ ruby main.rb

  
1 | 2 | 3

4 | 5 | 6

7 | 8 | 9

>Choose your move X: 1  

X | 2 | 3

4 | 5 | 6

7 | 8 | 9  

>Choose your move O: 1  

Invalid move

X | 2 | 3

4 | 5 | 6

7 | 8 | 9  

----------------------

>Choose your move X: 2  

X | X | 3

4 | 5 | 6

7 | 8 | 9  

>Choose your move O: 2  

Invalid move

X | X | 3

4 | 5 | 6

7 | 8 | 9  

----------------------

>Choose your move X: 3  

X | X | X

4 | 5 | 6

7 | 8 | 9  

~ X won ~

```

  

### SPECIAL THANKS TO [THEODINPROJECT](https://www.theodinproject.com).
