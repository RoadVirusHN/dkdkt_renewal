# Do you know yourself?

![image](https://user-images.githubusercontent.com/52690486/207782214-652a3eee-72ff-4796-adcb-740613384766.png)

> DKT(Deep Knowledge Tracing, 심층 지식 추적) 모델을 이용하여 지식 상태를 추적하는 웹 서비스

## 기술 관련 README
<a class="badge-anchor" target="_blank" rel="noopener noreferrer" href="https://github.com/bcaitech1/p4-dkt-dkdkt"><img style="margin: 3px;" class="badge" title="DKDKT_Repository" src="https://img.shields.io/badge/DKDKT_Repository-yellowgreen?style=for-the-badge&logo=github"></a>

## 발표 자료

<a class="badge-anchor" target="_blank" rel="noopener noreferrer" href="https://www.notion.so/DKT-06-Do-you-Know-DKT-2d73444d1433409fb50a50cce42b0e2b"><img style="margin: 3px;" class="badge" title="DKT 머신러닝 대회 1위 발표 자료" src="https://img.shields.io/badge/DKT 머신러닝 대회 1위 발표 자료(notion)-grey?style=for-the-badge&logo=notion"></a>
  
## 시연(Showcase)

<a class="badge-anchor" target="_blank" rel="noopener noreferrer" href="http://ec2-3-36-51-91.ap-northeast-2.compute.amazonaws.com"><img style="margin: 3px;" class="badge" title="시연용 웹사이트(Showcase website)" src="https://img.shields.io/badge/시연용 웹사이트(Showcase website)-skyblue?style=for-the-badge&logo=googlechrome"></a> <img src="https://badgen.net/badge/status/success/green" >
- 서버 비용 관계로 일부 기간 동안에는 작동하지 않습니다.

## 개요
- 사용자는 4개의 주제, 3가지의 난이도로 이루어진 상식문제 5문제를 푼다.
- 사용자의 시계열 데이터는 feature engineering을 통해 모델에 넣을 수 있게 가공된다.
- 가공된 데이터를 모델에 넣고 다음에 어떤 문제를 쉬워하고 어떤 문제를 어려워할 지 모델이 추론하여 알려준다.
- 데이터가 일정량 쌓이면 모델은 이를 추가하여 새롭게 학습한다.

### 튜토리얼

- ![1](https://user-images.githubusercontent.com/46857207/122681837-3a672200-d231-11eb-8e65-63ccb3b6f21d.gif)
1. 상식 주제를 골라 문제를 푼다.

---

- ![2](https://user-images.githubusercontent.com/46857207/122681900-7d28fa00-d231-11eb-818a-929569e55312.gif)
2. 문제를 다 풀면 사용자가 쉬워 할 문제와 어려워 할 문제를 모델이 추론하여 보여준다.

---

### 효과
-  누구나 개인 지도 선생님을 갖게 되는 효과가 있어 효율적으로 학습이 가능하다.


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
