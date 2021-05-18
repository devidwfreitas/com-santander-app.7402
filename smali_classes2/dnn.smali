.class Ldnn;
.super Legk;


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Ldnn;)V
    .locals 2

    invoke-direct {p0}, Legk;-><init>()V

    iget-object v0, p1, Ldnn;->b:Ljava/lang/String;

    iput-object v0, p0, Ldnn;->b:Ljava/lang/String;

    iget-object v0, p1, Ldnn;->c:Ljava/lang/String;

    iput-object v0, p0, Ldnn;->c:Ljava/lang/String;

    iget-wide v0, p1, Ldnn;->d:J

    iput-wide v0, p0, Ldnn;->d:J

    iget-boolean v0, p1, Ldnn;->a:Z

    iput-boolean v0, p0, Ldnn;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Legk;-><init>()V

    iput-object p1, p0, Ldnn;->b:Ljava/lang/String;

    iput-object p2, p0, Ldnn;->c:Ljava/lang/String;

    iput-wide p3, p0, Ldnn;->d:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldnn;->a:Z

    return-void
.end method
