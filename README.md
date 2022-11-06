# Do you know yourself?
  
<img src="https://s3.us-west-2.amazonaws.com/secure.notion-static.com/beb5427a-e9ce-42fe-956b-5df207cfd7c4/1.gif?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20221106%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20221106T075407Z&X-Amz-Expires=86400&X-Amz-Signature=a571420c7b90f062f664182aec651bf63425d7b2e4f5c0de6e36c0b6079b26fe&X-Amz-SignedHeaders=host&x-id=GetObject"/>

<img src="https://s3.us-west-2.amazonaws.com/secure.notion-static.com/ee38cc23-03e8-4ee5-8002-d0f4ca19c019/2.gif?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20221106%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20221106T075407Z&X-Amz-Expires=86400&X-Amz-Signature=d186a157ee6a51f7bfa9631c2f1ab2510cb03549bd2b8311d8418e8d377870ae&X-Amz-SignedHeaders=host&x-id=GetObject">

> DKT(Deep Knowledge Tracing, 심층 지식 추적) 모델을 이용하여 지식 상태를 추적하는 웹 서비스

## README
<a class="badge-anchor" target="_blank" rel="noopener noreferrer" href="https://www.github.com/bcaitech1/p4-dkt-dkdkt"><img style="margin: 3px;" class="badge" title="DKDKT_Repository" src="https://img.shields.io/badge/DKDKT_Repository-yellowgreen?style=for-the-badge&logo=github"></a>

## 발표 자료

<a class="badge-anchor" target="_blank" rel="noopener noreferrer" href="https://www.notion.so/DKT-06-Do-you-Know-DKT-2d73444d1433409fb50a50cce42b0e2b"><img style="margin: 3px;" class="badge" title="DKT 머신러닝 대회 1위 발표 자료" src="https://img.shields.io/badge/DKT 머신러닝 대회 1위 발표 자료(notion)-grey?style=for-the-badge&logo=notion"></a>
  
## 시연(Showcase)

<a class="badge-anchor" target="_blank" rel="noopener noreferrer" href="http://www.ec2-13-209-70-152.ap-northeast-2.compute.amazonaws.com"><img style="margin: 3px;" class="badge" title="시연용 웹사이트(Showcase website)" src="https://img.shields.io/badge/시연용 웹사이트(Showcase website)-skyblue?style=for-the-badge&logo=googlechrome"></a> <img src="https://badgen.net/github/status/micromatch/micromatch/4.0.1" >
- 서버 비용 관계로 일부 기간 동안에는 작동하지 않습니다.

## 배포(Deployment)

### jenkins 배포

- github 프로젝트의 main branch push 시 빌드 자동 트리거

#### 수동 트리거 시

- 해당 프로젝트의 스케듈 빌드 버튼 클릭

### `docker-compose` 배포

```bash
// 슬레이브 노드 서버에서
cd [user-name]/dkdkt_renewal
docker build . -t dkdkt/latest
docker run -p 80:80 -d --name dkdkt dkdkt/latest
```

## License

@Team Pepe™ All right reserved.
