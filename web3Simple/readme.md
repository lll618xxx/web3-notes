## clent构建

### 使用vite构建react应用

- [vite官方文档](https://cn.vitejs.dev/guide/)

>Tips：Vite 需要 Node.js 版本 14.18+，16+。

```
npm init vite@latest
```

### 安装tailwindcss相关的依赖

```
npm i -D tailwindcss postcss autoprefixer
```

### 创建Tailwind Css配置文件

```
npx tailwindcss init -p
```

生成 <code>tailwind.config.cjs</code> 配置文件

### 创建Post Css配置文件

```
npx tailwindcss init -p
```

### 在tailwind.config配置Tailwind的模板路径

```js
content: [
    "./src/**/*.{js,jsx,ts,tsx}",
],
```

## smart_contract构建

### 推荐安装依赖的node版本 12.18.1

### npx hardhat

### 生成abi

```
npx hardhat compile
```

在 <code>artifacts</code> 查看结果

### 本地部署合约

```
npx hardhat run scripts/deploy.js --network goerli
```

