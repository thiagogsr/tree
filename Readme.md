## Tree using Ruby lang

### Instructions
* Clone this repo

  `$ git clone https://github.com/thiagogsr/tree.git`

* Choose a tree type (basic tree, binary tree or search binary tree) and browse to your folder. 

#### Search binary tree

  `$ cd tree/search_binary_tree`

* Start the [_IRB_](http://www.ruby-doc.org/stdlib-2.0/libdoc/irb/rdoc/IRB.html)

  `$ irb -I .`
  
* Include the class

  `irb(main):001:0> require 'tree'`

  `irb(main):002:0> require 'branch'`
  
* Instantiate a tree

  `irb(main):003:0> t = Tree.new`

* Add any values

  `irb(main):004:0> b1 = t.insert 10`

  `irb(main):005:0> b2 = t.insert 34`

  `irb(main):006:0> b3 = t.insert 3`

  `irb(main):007:0> b4 = t.insert 87`

  `irb(main):008:0> b5 = t.insert 56`

  `irb(main):009:0> b6 = t.insert 25`

  `irb(main):010:0> b7 = t.insert 9`
  
* Show all values (symmetric)

  `irb(main):011:0> t.all`
  
* Remove any value

  `irb(main):012:0> t.remove b4`
  
Enjoy! ;)
