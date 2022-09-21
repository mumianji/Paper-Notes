大家好，我是李工，希望大家多多支持我。（愉快的周末就要来了）

看到有人给我留言，说希望讲一下 **IGBT（绝缘栅双极型晶体管)**，今天就讲一下IGBT，那位留言的朋友记得按时来看。

在实际应用中最流行和最常见的电子元器件是双极结型晶体管 BJT 和 MOS管。在之前的文章中我已经对BJT的工作原理和MOS管的工作原理以及结构应用有进行详细地说明。

![

](D:\PC\Notes\IGBT.assets\v2-9ac658ea2c1cd26223dfa38852029837_720w.jpg)IGBT实物图+电路符号图

虽然说 BJT 和 MOS 管是最流行和最常见的元器件，但是在非常高电流的应用中有限制，这个时候 IGBT 就派上用场了。

**你可以把 IGBT 看作 BJT 和 MOS 管的融合体，IGBT具有 BJT 的输入特性和 MOS 管的输出特性。**

与 BJT 或 MOS管相比，**绝缘栅双极型晶体管 IGBT 的优势在于它提供了比标准双极型晶体管更大的功率增益，以及更高的工作电压和更低的 MOS 管输入损耗。**

这篇文章将较为详细地**讲解 IGBT 内部构造，工作原理等基础知识**。希望能够让大家更了解 IGBT，也请大家多多指教。

## 一、什么是IGBT？

***IGBT 是绝缘栅双极晶体管的简称，是一种三端半导体开关器件，可用于多种电子设备中的高效快速开关。***

IGBT 主要用于放大器，用于通过脉冲宽度调制 (PWM) 切换/处理复杂的波形。

就像我上面说的 IGBT 是 BJT 和 MOS管的融合，IGBT 的符号也代表相同。***你可以看到输入侧代表具有栅极端子的 MOS管，输出侧代表具有集电极和发射极的 BJT。***

***集电极和发射极是导通端子，栅极是控制开关操作的控制端子。***

![img](D:\PC\Notes\IGBT.assets\v2-e2a634a643397784511d4e87ff193d80_720w.jpg)IGBT的电路符号与等效电路图

## 二、IGBT内部结构

IGBT 有三个端子（集电极、发射极和栅极）都附有金属层。然而，栅极端子上的金属材料具有二氧化硅层。

IGBT结构是一个四层半导体器件。四层器件是通过组合 PNP 和 NPN 晶体管来实现的，它们构成了 PNPN 排列。

![img](D:\PC\Notes\IGBT.assets\v2-0816dcb200d3d0cb89c43a612a7ead58_720w.jpg)IGBT的内部结构图

如上图所示，最靠近集电极区的层是 (p+) 衬底，即注入区；在它上面是 N 漂移区域，包括 N 层。注入区将大部分载流子（空穴电流）从 (p+) 注入 N- 层。

***漂移区的厚度决定了 IGBT 的电压阻断能力。***

漂移区域的上面是主体区域，它由 (p) 基板组成，靠近发射极，在主体区域内部，有 (n+) 层。

收集器区域（或注入区域）和 N 漂移区域之间的连接点是 J2。类似地，N-区域 和 主体区域之间的结点是结点 J1。

注意： IGBT 的结构在拓扑上类似于“MOS”栅极的晶闸管。但是，晶闸管动作和功能是可抑制的，这意味着在 IGBT 的整个器件工作范围内只允许晶体管动作。

IGBT 比晶闸管更可取，因为晶闸管等待过零的快速切换。

## 三、IGBT工作原理

***IGBT 的工作原理是通过激活或停用其栅极端子来开启或关闭。***

如果正输入电压通过栅极，发射器保持驱动电路开启。另一方面，如果 IGBT 的栅极端电压为零或略为负，则会关闭电路应用。

由于 IGBT 既可用作 BJT 又可用作 MOS管，因此它实现的放大量是其输出信号和控制输入信号之间的比率。

对于传统的 BJT，增益量与输出电流与输入电流的比率大致相同，我们将其称为 Beta 并表示为 β。

另一方面，对于 MOS管，没有输入电流，因为栅极端子是主通道承载电流的隔离。我们通过将输出电流变化除以输入电压变化来确定 IGBT 的增益。

![img](D:\PC\Notes\IGBT.assets\v2-57ccc9257355a2b61aa56c1a35b5a7ed_720w.jpg)IGBT 结构图

如下图所示，当集电极相对于发射极处于正电位时，N 沟道 IGBT 导通，而栅极相对于发射极也处于足够的正电位 (>V GET )。这种情况导致在栅极正下方形成反型层，从而形成沟道，并且电流开始从集电极流向发射极。

IGBT 中的集电极电流 Ic由两个分量 Ie和 Ih组成。Ie是由于注入的电子通过注入层、漂移层和最终形成的沟道从集电极流向发射极的电流。Ih是通过 Q1和体电阻 Rb从集电极流向发射极的空穴电流。因此

***尽管 Ih几乎可以忽略不计，因此 Ic ≈ Ie。***

在 IGBT 中观察到一种特殊现象，称为 IGBT 的闩锁。这发生在集电极电流超过某个阈值（ICE）。在这种情况下，寄生晶闸管被锁定，栅极端子失去对集电极电流的控制，即使栅极电位降低到 VGET以下，IGBT 也无法关闭。现在要关断 IGBT，我们需要典型的换流电路，例如晶闸管强制换流的情况。如果不尽快关闭设备，可能会损坏设备。

![img](D:\PC\Notes\IGBT.assets\v2-e76ef6f9f4ee075a8860f8afeab04f36_720w.png)集电极电流公式

下图很好地解释IGBT的工作原理，描述了 IGBT 的整个器件工作范围。

![img](D:\PC\Notes\IGBT.assets\v2-14b58dfcc2d05d8b0306831fc6701df7_720w.jpg)IGBT的工作原理图

IGBT 仅在栅极端子上有电压供应时工作，它是栅极电压，即**VG**。

***如上图所示，一旦存在栅极电压 ( VG ) ，栅极电流 ( IG ) 就会增加，然后它会增加栅极-发射极电压 ( V GE )。***

***因此，栅极-发射极电压增加了集电极电流 ( IC )。因此，集电极电流 ( IC ) 降低了集电极到发射极电压 ( VCE )。***

注意： IGBT 具有类似于二极管的电压降，通常为 2V 量级，仅随着电流的对数增加。

IGBT 使用续流二极管传导反向电流，续流二极管放置在 IGBT 的集电极-发射极端子上。

## 四、IGBT的等效电路

IGBT的近似等效电路由 MOS 管和 PNP 晶体管(Q1 )组成,考虑到 n- 漂移区提供的电阻，电阻 Rd已包含在电路中，如下图所示：

![img](D:\PC\Notes\IGBT.assets\v2-95b9bfd8de9fb35dd82c7707389471a9_720w.jpg)IGBT 的近似等效电路

仔细检查 IGBT 的基本结构，可以得出这个等效电路，基本结构如下图所示。

![img](D:\PC\Notes\IGBT.assets\v2-6f17668e618c58a4208225eec9a2a458_720w.jpg)等效电路图的基本结构

**1、穿通 IGBT、PT-IGBT**： 穿通 IGBT、PT-IGBT 在发射极接触处具有 N+ 区。

观察上面显示 IGBT 的基本结构，可以看到到从集电极到发射极存在另一条路径，这条路径是集电极、p+、n- 、 p（n 通道）、n+ 和发射极。

因此，在 IGBT 结构中存在另一个晶体管 Q2作为 n – pn+，因此，我们需要在近似等效电路中加入这个晶体管 Q2以获得精确的等效电路。

***IGBT 的确切等效电路如下所示***：

![img](D:\PC\Notes\IGBT.assets\v2-d859e3dbea161eadb07acd72ebb0c5b2_720w.jpg)IGBT的精确等效电路图

该电路中的Rby是 p 区对空穴电流的流动提供的电阻。

***众所周知，IGBT是 MOS 管的输入和 BJT 的输出的组合，它具有与N沟道MOS管和达林顿配置的PNP BJT等效的结构，因此也可以加入漂移区的电阻。***

## 五、IGBT 的特性

### 1、静态 VI 特性

下图显示了 n 沟道 IGBT 的静态 VI 特性以及标有参数的电路图，该图与 BJT 的图相似，只是图中保持恒定的参数是 VGE，因为 IGBT 是电压控制器件，而 BJT 是电流控制器件。

![img](D:\PC\Notes\IGBT.assets\v2-d88db0aa3d59acb3ec03ba188324ceaa_720w.jpg)IGBT的静态特性图

当 IGBT 处于关闭模式时（VCE为正且 VGE < VGET），反向电压被 J 2 阻断，当它被反向偏置时，即 VCE为负，J 1 阻断电压。

### 2、开关特性

IGBT 是**电压控制器件**，因此它只需要一个很小的电压到栅极即可保持导通状态。

由于是单向器件， IGBT 只能在从集电极到发射极的正向切换电流。***IGBT的典型开关电路如下所示，栅极电压 VG施加到栅极引脚以从电源电压 V+ 切换电机 (M)。***电阻 Rs 大致用于限制通过电机的电流。

![img](D:\PC\Notes\IGBT.assets\v2-57510c4d09f5195c159361e24e0f8392_720w.jpg)IGBT的典型开关电路图

下图显示了**IGBT 的典型开关特性**。

![img](D:\PC\Notes\IGBT.assets\v2-57ccc9257355a2b61aa56c1a35b5a7ed_720w.jpg)IGBT 的典型开关特性

**导通时间（ t on）**：通常由延迟时间 (t dn ) 和上升时间 (t r ) 两部分组成。

**延迟时间 （t dn )**：定义为集电极电流从漏电流 ICE上升到 0.1 IC（最终集电极电流）和集电极发射极电压从 VCE下降到 0.9VCE的时间。

**上升时间 （t r )**：定义为集电极电流从 0.1 IC上升到 IC以及集电极-发射极电压从 0.9V CE下降到 0.1 VCE的时间。

**关断时间（ t off）**:由三个部分组成，延迟时间 (t df )、初始下降时间 (t f1 ) 和最终下降时间 (t f2 )。

**延迟时间 （t df )**：定义为集电极电流从 I C下降到 0.9 I C并且 V CE开始上升的时间。

**初始下降时间 （t f1 )**：是集电极电流从 0.9 I C下降到 0.2 I C并且集电极发射极电压上升到 0.1 V CE的时间。

**最终下降时间 （t f2 )**：定义为集电极电流从 0.2 I C下降到 0.1 I C并且 0.1V CE上升到最终值 V CE的时间。

![img](D:\PC\Notes\IGBT.assets\v2-4e57a52b8bae9d0df43f6424ffde1d0c_720w.png)关断时间公式

![img](D:\PC\Notes\IGBT.assets\v2-1c0009d6eb7af677f9e5a7b178399762_720w.png)导通时间公式

### 3、输入特性

下图可以理解**IGBT的输入特性**。开始，当没有电压施加到栅极引脚时，IGBT 处于关闭状态，没有电流流过集电极引脚。

当施加到栅极引脚的电压超过**阈值电压**时，IGBT 开始导通，集电极电流 I G开始在集电极和发射极端子之间流动。集电极电流相对于栅极电压增加，如下图所示。

![img](D:\PC\Notes\IGBT.assets\v2-9f28d938e52ba2003dab5ff9848563f4_720w.jpg)IGBT的输入特性图

### 4、输出特性

***由于 IGBT 的工作依赖于电压，因此只需要在栅极端子上提供极少量的电压即可保持导通。***

IGBT 与双极功率晶体管相反，双极功率晶体管需要在基极区域有连续的基极电流流动以保持饱和。***IGBT 是单向器件，这意味着它只能在“正向”（从集电极到发射极）开关。***

IGBT 与具有双向电流切换过程的 MOS 管正好相反。MOS管正向可控，反向电压不受控制。

在动态条件下，当 IGBT 关闭时， 可能会经历闩锁电流，当连续导通状态驱动电流似乎超过临界值时，这就是闩锁电流。

此外，当栅极-发射极电压低于阈值电压时，会有少量漏电流流过 IGBT ，此时，集电极-发射极电压几乎等于电源电压，因此，四层器件 IGBT 工作在截止区。

![img](D:\PC\Notes\IGBT.assets\v2-b67638eff6842f688dcff7c1e35c62d2_720w.jpg)IGBT 的输出特性图

开IGBT 的输出特性分为三个阶段：

**第一阶段**：当**栅极电压 VGE 为零**时，IGBT 处于关断状态，这称为**截止区**。

**第二阶段**：当 VGE 增加时，如果它小于**阈值电压**，那么会有很小的漏电流流过 IGBT ，但I GBT 仍然处于截止区。

**第三阶段**：当 VGE增加到超过阈值电压时，IGBT 进入**有源区**，电流开始流过 IGBT 。如下图所示，电流将随着电压 VGE的增加而增加。

## 六、IGBT的分类-穿通 IGBT（PT-IGBT）和非穿通 IGBT（NPT-IGBT）

IGBT 可以根据***它们是否在最靠近发射极的P层内具有N+缓冲层而分为两种主要方式**。*

取决于它们***后来是否具有 N+，它们被称为穿通 IGBT 或非穿通 IGBT**。*

### **1、穿通 IGBT、PT-IGBT**

穿通 IGBT、PT-IGBT 在发射极接触处具有 N+ 区。

**穿通 IGBT** 包括 N+ 缓冲层，因此也被称为非对称 IGBT。非对称 IGBT 具有不对称的电压阻断能力，即正向和反向击穿电压不同。

***非对称 IGBT 的反向击穿电压小于其正向击穿电压，同时具有更快的切换速度。***

穿通 IGBT 是单向的，不能处理反向电压。因此，它们被用于逆变器和斩波器电路等直流电路中。

### **2、非穿通 IGBT, NPT-IGBT**

非穿通IGBTs没有由发射极接触额外的N+区域。NPT-IGBT 的结构导致它们也被称为对称 IGBT。

由于没有额外的 N+ 缓冲层，非穿通 IGBT 也被称为对称 IGBT。

***结构的对称性提供了对称的击穿电压特性，即正向和反向击穿电压相等***。由于这个原因，它们被用于交流电路。

### 3、PT-IGBT 和 NPT-IGBT 在电路设计上的差异

PT IGBT 和 NPT IGBT 因其结构而具有许多不同的特性。

尽管差异并不总是很显着，但选择使用 NPT IGBT 还是 PT IGBT 可能会对电路设计产生重大影响。

**1、开关损耗**： 对于给定的 V CE(on)，***PT IGBT 将具有更高的开关速度\***，因此，它的总开关能量更低，这是由于较高的增益和少数载流子寿命减少，从而减少了尾电流。

**2、坚固性**： 一个重要的问题是短路电流能力。**1）**一般来说，***NPT IGBT 通常具有短路额定值，但 PT IGBT 则没有\***。

**2）**从广义上讲，由于结构内 ***PNP 双极晶体管的基极更宽且增益更低，NPT 技术更加坚固耐用\***，这是 NPT 半导体器件的主要优势，尽管这需要与开关速度进行权衡。

**3）**就最大电压而言，***很难制造集电极-发射极电压大于约 600 伏的 PT-IGBT，而使用 NPT 拓扑则很容易实现\***，这可能会对任何给定电子设计的半导体器件选择产生影响。

**3、温度影响**： 对于 PT 和 NPT IGBT，开关速度几乎不受温度影响。然而，可能***对任何电路设计产生影响的一种影响是二极管中的反向恢复电流随着温度的升高而增加\***，因此外部二极管的影响可能会影响电路设计中的导通损耗。

在关断损耗方面，对于 NPT 器件，速度和开关损耗在整个温度范围内几乎保持不变。对于 PT IGBT，关断速度降低，因此开关损耗增加，然而，无论如何，损耗通常都很低，因此它不太可能对大多数电子设计产生任何明显的影响。

## 七、IGBT 的优缺点

IGBT作为一个整体兼有BJT和MOS管的优点。

### **1、优点**

- 具有更高的电压和电流处理能力。
- 具有非常高的输入阻抗。
- 可以使用非常低的电压切换非常高的电流。
- 电压控制装置，即它没有输入电流和低输入损耗。
- 栅极驱动电路简单且便宜，降低了栅极驱动的要求
- 通过施加正电压可以很容易地打开它，通过施加零电压或稍微负电压可以很容易地关闭它。
- 具有非常低的导通电阻。
- 具有高电流密度，使其能够具有更小的芯片尺寸。
- 具有比 BJT 和 MOS 管更高的功率增益。
- 具有比 BJT 更高的开关速度。
- 可以使用低控制电压切换高电流电平。
- 由于双极性质，增强了传导性。
- 更安全

### **2、缺点**

- 开关速度低于 MOS管。
- 单向的，在没有附加电路的情况下无法处理AC波形。
- 不能阻挡更高的反向电压。
- 比 BJT 和 MOS管 更昂贵。
- 类似于晶闸管的 PNPN 结构，它存在锁存问题。
- 与 PMOS 管 相比，关断时间长。
- 类似于晶闸管的 PNPN 结构，它存在锁存问题。
- 与 PMOS 管 相比，关断时间长。