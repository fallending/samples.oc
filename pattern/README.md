## 模式

感谢：
	1. [huang303513/Design-Pattern-For-iOS](https://github.com/huang303513/Design-Pattern-For-iOS)
	2. [leichunfeng/DesignPatterns-Objective-C](https://github.com/leichunfeng/DesignPatterns-Objective-C)
	3. [boai/BABaseProject](https://github.com/boai/BABaseProject)

还要关注
	1. [反面模式（Anti-pattern）](http://www.cnblogs.com/QQParadise/archive/2011/11/16/2250997.html)

### 常用的 23 种设计模式

```
策略模式（Strategy），它定义了算法家族，分别封装起来，让它们之间可以互相替换，此模式让算法的变化，不会影响到使用算法的客户。
装饰模式（Decorator），动态地给一个对象添加一些额外的职责，就增加功能来说，装饰模式比生成子类更为灵活。
代理模式（Proxy），为其他对象提供一种代理以控制对这个对象的访问。
工厂方法模式（Factory Method），定义一个用于创建对象的接口，让子类决定实例化哪一个类。工厂方法使一个类的实例化延迟到其子类。
原型模式（Prototype），用原型实例指定创建对象的种类，并且通过拷贝这些原型创建新的对象。
模板方法模式（Template Method），定义一个操作中的算法的骨架，而将一些步骤延迟到子类中。模板方法使得子类可以不改变一个算法的结构即可重定义该算法的某些特定步骤。
外观模式（Facade），为子系统中的一组接口提供一个一致的界面，此模式定义了一个高层接口，这个接口使得这一子系统更加容易使用。
建造者模式（Builder），将一个复杂对象的构建与它的表示分离，使得同样的构建过程可以创建不同的表示。
观察者模式（Observer），定义了一种一对多的依赖关系，让多个观察者对象同时监听某一个主题对象。这个主题对象在状态发生变化时，会通知所有观察者对象，使它们能够自动更新自己。
抽象工厂模式（Abstract Factory），提供一个创建一系列相关或相互依赖对象的接口，而无需指定它们具体的类。
状态模式（State），当一个对象的内在状态改变时允许改变其行为，这个对象看起来像是改变了其类。
适配器模式（Adapter），将一个类的接口转换成客户希望的另外一个接口。Adapter 模式使得原本由于接口不兼容而不能一起工作的那些类可以一起工作。
备忘录模式（Memento），在不破坏封装性的前提下，捕获一个对象的内部状态，并在该对象之外保存这个状态。这样以后就可将该对象恢复到原先保存的状态。
组合模式（Composite），将对象组合成树形结构以表示‘部分-整体’的层次结构。组合模式使得用户对单个对象和组合对象的使用具有一致性。
迭代器模式（Iterator），提供一种方法顺序访问一个聚合对象中各个元素，而又不暴露该对象的内部表示。
单例模式（Singleton），保证一个类仅有一个实例，并提供一个访问它的全局访问点。
桥接模式（Bridge），将抽象部分与它的实现部分分离，使它们都可以独立地变化。
命令模式（Command），将一个请求封装为一个对象，从而使你可用不同的请求对客户进行参数化；对请求排队或记录请求日志，以及支持可撤销的操作。
职责链模式（Chain of Responsibility），使多个对象都有机会处理请求，从而避免请求的发送者和接收者之间的耦合关系。将这个对象连成一条链，并沿着这条链传递该请求，直到有一个对象处理它为止。
中介者模式（Mediator），用一个中介对象来封装一系列的对象交互。中介者使各对象不需要显式地相互引用，从而使其耦合松散，而且可以独立地改变它们之间的交互。
享元模式（Flyweight），运用共享技术有效地支持大量细粒度的对象。
解释器模式（Interpreter），给定一个语言，定义它的文法的一种表示，并定义一个解释器，这个解释器使用该表示来解释语言中的句子。
访问者模式（Visitor），表示一个作用于某对象结构中的各元素的操作。它使你可以在不改变各元素的类的前提下定义作用于这些元素的新操作。
```

### 面向对象设计原则

```
单一职责原则（SRP），就一个类而言，只做一件事。
开放-封闭原则（OCP），是说软件实体（类、模块、函数等等）应该可以拓展，但是不可修改。
依赖倒转原则（DIP），A. 高层模块不应该依赖低层模块，两个都应该依赖抽象。B. 抽象不应该依赖细节，细节应该依赖抽象。
里氏代换原则（LSP），子类型必须能够替换掉它们的父类型。
迪米特法则（LoD），如果两个类不必彼此直接通信，那么这两个类就不应当发生直接的相互作用。如果其中一个类需要调用另一个类的某一个方法的话，可以通过第三者转发这个调用。
合成/聚合复用原则（CARP），尽量使用合成/聚合，尽量不要使用类继承。
```

### oc 设计模式例子与叙述

* [Facade](https://github.com/BinaryArtists/samples.oc.java/tree/master/pattern/oc/Facade)
* [Observer](https://github.com/BinaryArtists/samples.oc.java/tree/master/pattern/oc/Observer)
* [Singleton](https://github.com/BinaryArtists/samples.oc.java/tree/master/pattern/oc/Singleton)
* [State](https://github.com/BinaryArtists/samples.oc.java/tree/master/pattern/oc/State)
* [Visitor](https://github.com/BinaryArtists/samples.oc.java/tree/master/pattern/oc/Visitor)
* [AbstractFactory]()
	> [[抽象工厂模式]在游戏开发中的应用](http://www.tuicool.com/articles/mayYviZ), 设计模式在类间关系这个粒度上给出常见问题的解决方案。属于软件工程中逻辑架构设计中相当重要的一环。
	> 比如要换肤，那么针对皮肤有一系列工厂（宝石蓝，梦幻紫等），抽象出的行为呢，则是各种子产品（导航条，等子产品元素的外观特征）的接口实例

### java 综合例子

* [async-mvc](https://github.com/BinaryArtists/samples.oc.java/tree/master/pattern/ex/async-mvc)
	> Model中使用Observer模式。
	> Controller的控制行为采用State模式（ReadyState，UpdatingState）。
	> 当前不讨论，架构模式.

### iOS

1. [Cocoa如何应用设计模式](http://www.cnblogs.com/pengyingh/articles/2346299.html)