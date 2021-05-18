.class Lavr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:J

.field b:I

.field c:Ljava/lang/String;

.field d:I

.field e:I

.field f:J

.field g:J

.field h:Ljava/lang/String;

.field final synthetic i:Lavq;


# direct methods
.method constructor <init>(Lavq;Lcom/adjust/sdk/ActivityState;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    .line 58
    iput-object p1, p0, Lavr;->i:Lavq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide v2, p0, Lavr;->a:J

    .line 50
    iput v0, p0, Lavr;->b:I

    .line 51
    iput-object v1, p0, Lavr;->c:Ljava/lang/String;

    .line 52
    iput v0, p0, Lavr;->d:I

    .line 53
    iput v0, p0, Lavr;->e:I

    .line 54
    iput-wide v2, p0, Lavr;->f:J

    .line 55
    iput-wide v2, p0, Lavr;->g:J

    .line 56
    iput-object v1, p0, Lavr;->h:Ljava/lang/String;

    .line 59
    if-nez p2, :cond_0

    .line 70
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-wide v0, p2, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    iput-wide v0, p0, Lavr;->a:J

    .line 63
    iget v0, p2, Lcom/adjust/sdk/ActivityState;->eventCount:I

    iput v0, p0, Lavr;->b:I

    .line 64
    iget-object v0, p2, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    iput-object v0, p0, Lavr;->c:Ljava/lang/String;

    .line 65
    iget v0, p2, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    iput v0, p0, Lavr;->d:I

    .line 66
    iget v0, p2, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    iput v0, p0, Lavr;->e:I

    .line 67
    iget-wide v0, p2, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    iput-wide v0, p0, Lavr;->f:J

    .line 68
    iget-wide v0, p2, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    iput-wide v0, p0, Lavr;->g:J

    .line 69
    iget-object v0, p2, Lcom/adjust/sdk/ActivityState;->pushToken:Ljava/lang/String;

    iput-object v0, p0, Lavr;->h:Ljava/lang/String;

    goto :goto_0
.end method
