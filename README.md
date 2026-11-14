# B2B销售协同工作台 - 完整前端源码工程 (yxl1121st)

> 线上访问地址：[https://yxl1121st.site.accio.ai/](https://yxl1121st.site.accio.ai/)  
> 本项目为 **B2B销售协同工作台（专业版）** 的完整可二次开发前端工程源码。

---

## 📖 项目功能架构与核心模块

本系统面向外贸及工业制造业 B2B 业务员、外贸经理量身打造，打通了“获客建档 ➔ 商机推进 ➔ 沉睡预警 ➔ 报价测算 ➔ 节日维系 ➔ Excel台账交互”全流程闭环：

1. **B2B客户名录与商机池**
   - 包含完整的 88 家企业真实档案与跟进台账记录。
   - 支持 S级（战略大客）、A级（重点签约）、B级（积极推进）、C级（潜在培育）、WON（已成交归档）分层管理。
   - 客户跟进历史时间轴日志（实时添加通话备忘、成交原因与测样反馈）。
   - 快速多维度筛选：按等级过滤、按阶段过滤（方案报价、商务谈判、合同签署等）、关键字全文搜索。

2. **核心经营看板 (KPI Overview)**
   - 客户与商机总数统计、S/A级重点客户数。
   - 商机推进总额实时加总计算与已成交企业归档数。
   - 待办日程统计（紧急促单高亮提醒）。
   - 7日未联系沉睡预警企业数。

3. **7日未跟进沉睡客户唤醒中心**
   - 智能识别超过 7 天未触达的在跟进客户并标记天数。
   - 提供专属破冰话术推荐与一键进入回访面板。

4. **今日待办日程与推进管理**
   - 划分 🔴 紧急必办、🟡 重点推进、🟢 常规跟进三大优先级。
   - 支持关联特定客户企业或内部事项，支持任务勾选完成、新建与删除。

5. **全球 34 国商业节日日历与外贸英文祝福模版**
   - 涵盖欧美、中东、东南亚、独联体、拉美等 34 个全球主流贸易市场的关键节假日（公历新年、东正教圣诞、开斋节、感恩节、复活节等）。
   - 标注具体放假天数与业务员跟进/避坑建议。
   - 提供一键生成并复制个性化英文节日祝福邮件/开发信模版。

6. **B2B 高转化沟通话术库**
   - 包含初次破冰触达、报价后回访、沉睡激活、价格谈判、索要好评等精选话术。
   - 支持一键复制至剪贴板，方便在 WhatsApp、微信、邮件中快速发送。

7. **B2B 报价与毛利速算器**
   - 支持实时输入单价、成本、数量、综合运费与外汇汇率。
   - 自动测算总销售额、总成本、毛利净额（USD / RMB）及综合毛利率（绿色/黄色/红色风险预警）。

8. **全球 13 国外贸主流币种实时汇率换算**
   - 支持美元(USD)、欧元(EUR)、英镑(GBP)、澳元(AUD)、加元(CAD)、沙特里亚尔(SAR)、阿联酋迪拉姆(AED)、巴西雷亚尔(BRL)、卢布(RUB)、日元(JPY)、越南盾(VND)、比索(MXN)、兰特(ZAR)等货币与人民币的一键折算。

9. **Excel 批量导入与导出台账**
   - 基于 SheetJS（XLSX）实现。
   - 支持一键导出“B2B客户名录与跟进台账.xlsx”与“B2B日常待办与日程提醒.xlsx”。
   - 支持下载标准 Excel 导入模板，支持追加导入或覆盖导入。

10. **本地数据持久化与完整备份恢复**
    - 采用 localStorage 自动持久化保存所有修改。
    - 支持一键导出完整 JSON 备份文件，支持随时上传备份文件恢复，或一键恢复出厂预设。

---

## 🛠️ 技术栈说明

- **核心框架**：React 18 (`react`, `react-dom`)
- **构建工具**：Vite 6 (`@vitejs/plugin-react`)
- **样式系统**：Tailwind CSS 3 + PostCSS + Autoprefixer
- **UI 图标库**：Lucide React (`lucide-react`)
- **表格处理**：SheetJS (`xlsx`)
- **代码规范**：ESModule, 标准组件化架构

---

## 📁 目录结构

```text
yxl1121st-workbench-source/
  ├── public/                     # 静态公共资源
  ├── src/
  │   ├── components/             # 功能组件库
  │   │   ├── Header.jsx          # 顶部导航与快捷操作栏
  │   │   ├── StatsOverview.jsx   # 核心经营指标概览卡片
  │   │   ├── CustomerTable.jsx   # 客户与商机池表格（筛选/搜索/分页）
  │   │   ├── TaskList.jsx        # 今日待办日程任务列表
  │   │   ├── DormantAlert.jsx    # 7日未跟进沉睡客户预警
  │   │   ├── ScriptsLibrary.jsx  # 高转化沟通话术库
  │   │   ├── HolidayCalendar.jsx # 全球商业节日日历
  │   │   ├── CustomerModal.jsx   # 新增/编辑客户资料弹窗
  │   │   ├── TaskModal.jsx       # 新建待办事项弹窗
  │   │   ├── CustomerDrawer.jsx  # 客户详细档案与跟进日志抽屉
  │   │   ├── ExcelImportModal.jsx# Excel表格批量导入弹窗
  │   │   ├── DataBackupModal.jsx # 数据备份、恢复与重置中心
  │   │   ├── CalculatorModal.jsx # 报价与毛利速算器弹窗
  │   │   ├── ExchangeRateModal.jsx# 实时汇率换算弹窗
  │   │   └── HolidayGreetingModal.jsx# 节日英文祝福信弹窗
  │   ├── data/                   # 预设基础数据
  │   │   ├── customers.json      # 88家企业客户初始数据
  │   │   ├── tasks.json          # 待办日程初始数据
  │   │   ├── scripts.json        # 沟通话术库初始数据
  │   │   ├── holidays.json       # 全球34个商业节日数据
  │   │   └── currencies.json     # 13国汇率与币种定义
  │   ├── utils/                  # 工具函数
  │   │   ├── excel.js            # Excel导入导出与模板下载
  │   │   └── storage.js          # 本地存储持久化与JSON备份
  │   ├── App.jsx                 # 主应用调度中心
  │   ├── main.jsx                # React入口文件
  │   └── index.css               # 全局样式与 Tailwind 指令
  ├── .gitignore                  # Git 忽略配置
  ├── index.html                  # HTML 模板
  ├── package.json                # 项目依赖与运行脚本
  ├── vite.config.js              # Vite 配置文件
  ├── tailwind.config.js          # Tailwind CSS 配置文件
  └── postcss.config.js           # PostCSS 配置文件
```

---

## 🚀 启动与二次开发指引

### 1. 环境准备
- 推荐使用 Node.js `v18.0.0` 或更高版本（支持 Node.js 20 / 22）。

### 2. 安装依赖
在项目根目录下打开命令行终端执行：
```bash
npm install
```

### 3. 启动本地开发服务
```bash
npm run dev
```
启动成功后，浏览器会自动打开 `http://localhost:3000`，即可进行实时预览与调试（支持热重载 HMR）。

### 4. 生产构建打包
```bash
npm run build
```
打包完成后会在根目录生成 `dist/` 文件夹，内含优化压缩后的生产静态资源，可直接部署至任何云服务器或 CDN。

### 5. 本地预览生产构建产物
```bash
npm run preview
```
