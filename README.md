# 标题：RNA-seq的差异基因表达流程

### 作者：陈洋

## 摘要：

RNAseq正在成为测量细胞反应的最突出的方法之一。RNAseq不仅能够分析样本之间基因表达的差异，而且可以发现新的亚型并分析SNP变异。本流程将介绍处理和分析差异基因表达数据的基本工作流程，旨在提供设置环境和运行比对工具的通用方法。工作流程主要分为四步，1.安装Miniconda  2.安装conda相应包 3.用FastQC分析序列质量 4.使用Trim_Galore删除低质量序列 5.用SortMeRNA去除rRNA序列

## 前言：

RNA-Seq是一种高通量测序技术，可用于研究生物体内的RNA表达情况。相比传统的基因芯片技术，RNA-Seq具有更高的灵敏度和更广泛的动态范围，因此被广泛应用于分析基因表达、转录本结构、RNA编辑和差异剪接等生物学过程。

## 数据集与方法：

选用的数据集是 EBI数据库中的一个样本文件以及sortmerna的rRNA数据库

方法：

1.先克隆仓库到本地

```shell
git clone https://github.com/cyny666/RNA-seq
```

2.然后可以进入仓库用dockerfile构建环境（Ubuntu）

```sh
cd RNA-seq/
# 用dockerfile（或者VMware）构建虚拟机环境
docker build -t rna .
```

3.运行第一个脚本在虚拟机中安装miniconda

```sh
bash 1_Miniconda.sh 
```

4.运行第二个脚本下载样本文件(这里是EBI数据库中的一个样本文件)以及安装conda相应的包，也可以自己手动下载需要分析的文件

```shell
```





## 结果：

* 可以成功生成FastQC的质量分析报告
* 可以得到样本删除低质量序列后的文件以及其质量分析报告
* 可以得到Trim_Galore删减的报告
* 产生sortmeRNA去除的报告

## 讨论：

## 贡献：

陈洋负责了全部的内容

## 参考文献：

1. Andrews S. (2010). FastQC: a quality control tool for high throughput sequence data. Available online at: http://www.bioinformatics.babraham.ac.uk/projects/fastqc
2. Martin, Marcel. Cutadapt removes adapter sequences from high-throughput sequencing reads. EMBnet.journal, [S.l.], v. 17, n. 1, p. pp. 10-12, may. 2011. ISSN 2226-6089. Available at: http://journal.embnet.org/index.php/embnetjournal/article/view/200. doi:http://dx.doi.org/10.14806/ej.17.1.200.
3. Kopylova E., Noé L. and Touzet H., "SortMeRNA: Fast and accurate filtering of ribosomal RNAs in metatranscriptomic data", Bioinformatics (2012), doi: 10.1093/bioinformatics/bts611
4. Dobin A, Davis CA, Schlesinger F, et al. STAR: ultrafast universal RNA-seq aligner. Bioinformatics. 2013;29(1):15-21. doi:10.1093/bioinformatics/bts635.
5. Lassmann et al. (2010) "SAMStat: monitoring biases in next generation sequencing data." Bioinformatics doi:10.1093/bioinformatics/btq614 [PMID: 21088025]



## 附录：

核心代码以及脚本、Dockerfile文件均在github上：

地址如下：https://github.com/cyny666/RNA-seq







