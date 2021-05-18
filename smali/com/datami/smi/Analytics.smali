.class public Lcom/datami/smi/Analytics;
.super Ljava/lang/Object;


# instance fields
.field private cellularSessionTime:J

.field private sdDataUsage:J

.field private wifiSessionTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/datami/smi/Analytics;->cellularSessionTime:J

    iput-wide v0, p0, Lcom/datami/smi/Analytics;->wifiSessionTime:J

    iput-wide v0, p0, Lcom/datami/smi/Analytics;->sdDataUsage:J

    return-void
.end method


# virtual methods
.method public getCellularSessionTime()J
    .locals 2

    iget-wide v0, p0, Lcom/datami/smi/Analytics;->cellularSessionTime:J

    return-wide v0
.end method

.method public getSdDataUsage()J
    .locals 2

    iget-wide v0, p0, Lcom/datami/smi/Analytics;->sdDataUsage:J

    return-wide v0
.end method

.method public getWifiSessionTime()J
    .locals 2

    iget-wide v0, p0, Lcom/datami/smi/Analytics;->wifiSessionTime:J

    return-wide v0
.end method

.method public setCellularSessionTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/datami/smi/Analytics;->cellularSessionTime:J

    return-void
.end method

.method public setSdDataUsage(J)V
    .locals 1

    iput-wide p1, p0, Lcom/datami/smi/Analytics;->sdDataUsage:J

    return-void
.end method

.method public setWifiSessionTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/datami/smi/Analytics;->wifiSessionTime:J

    return-void
.end method
