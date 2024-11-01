# Node.js 20으로 업데이트
FROM node:20

# 경로 설정하기
WORKDIR /app

# package.json과 package-lock.json을 워킹 디렉토리에 복사
COPY package.json ./

# 의존성 설치
RUN npm install

# 모든 파일을 도커 컨테이너의 워킹 디렉토리에 복사
COPY . .

# 3000번 포트 노출
EXPOSE 3000

# Vite 서버를 0.0.0.0에서 실행
CMD ["npm", "run", "dev", "--", "--host"]