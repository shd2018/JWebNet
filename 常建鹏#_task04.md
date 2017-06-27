## 系统模型说明文档

### 1．需求模型
#### 1.1 用例图
说明：本系统主要有三个参与者，学生、教师和管理员。学生可以进行注册、登录、提出问题、查看问题、删除问题等活动，教师可以进行注册、登录、回答问题、查看问题、上传资料等活动。  
 ![UseCase](https://github.com/QCherish/JWebNet/blob/master/module/UseCase.png)
###### 用例说明书：
![Use](https://github.com/QCherish/JWebNet/blob/master/module/Use.png)
#### 1.2 活动图
用户进入网站时，首先进行注册或者登录，登录成功后会根据用户类型进入不同的页面，教师可以选择查看问题或者上传资料，学生可以选择查看问题，查找相似问题或者提出新问题。  
![activity](https://github.com/QCherish/JWebNet/blob/master/module/activity.png)

### 2．内容模型
#### 2.1 UML类图(静态模型)
说明：系统中一共有5个主要类，User类是作为用户的基类，用户共分为三种，分别是教师，学生和管理员，分别作为一个类继承了User类，Question类是对于问题的描述，每一个问题都会实例化成一个Question对象，Answer类是对于回答的描述，每一个回答会实例化成一个Answer对象。Data类是对于资料的描述，教师上传的资料将会实例化成一个Data对象。  
![Class](https://github.com/QCherish/JWebNet/blob/master/module/class.png)
#### 2.2 状态图(动态模型)
![state](https://github.com/QCherish/JWebNet/blob/master/module/state.png)
### 3．超文本模型
#### 3.1超文本结构模型(导航类图)
![navigationClass](https://github.com/QCherish/JWebNet/blob/master/module/navigationClass.png)
#### 3.2超文本访问模型
![Hypertext access](https://github.com/QCherish/JWebNet/blob/master/module/Hypertext%20access.png)
#### 3.3 Web模型
![WEB](https://github.com/QCherish/JWebNet/blob/master/module/WEB.png)
### 4. 展示模型
![show](https://github.com/QCherish/JWebNet/blob/master/module/show.png)
### 5. 适应性模型
说明：当用户以学生身份登录时，回答问题功能部分将不能使用  
![Adaptability](https://github.com/QCherish/JWebNet/blob/master/module/Adaptability.png)  
