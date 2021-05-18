.class Ldmk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:J

.field final synthetic e:Ldmb;


# direct methods
.method constructor <init>(Ldmb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Ldmk;->e:Ldmb;

    iput-object p2, p0, Ldmk;->a:Ljava/lang/String;

    iput-object p3, p0, Ldmk;->b:Ljava/lang/String;

    iput-object p4, p0, Ldmk;->c:Ljava/lang/String;

    iput-wide p5, p0, Ldmk;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Ldmk;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ldmk;->e:Ldmb;

    invoke-static {v0}, Ldmb;->a(Ldmb;)Ldlv;

    move-result-object v0

    invoke-virtual {v0}, Ldlv;->u()Ldnk;

    move-result-object v0

    iget-object v1, p0, Ldmk;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ldnk;->a(Ljava/lang/String;Legk;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Legk;

    invoke-direct {v0}, Legk;-><init>()V

    iget-object v1, p0, Ldmk;->c:Ljava/lang/String;

    iput-object v1, v0, Legk;->b:Ljava/lang/String;

    iget-object v1, p0, Ldmk;->a:Ljava/lang/String;

    iput-object v1, v0, Legk;->c:Ljava/lang/String;

    iget-wide v2, p0, Ldmk;->d:J

    iput-wide v2, v0, Legk;->d:J

    iget-object v1, p0, Ldmk;->e:Ldmb;

    invoke-static {v1}, Ldmb;->a(Ldmb;)Ldlv;

    move-result-object v1

    invoke-virtual {v1}, Ldlv;->u()Ldnk;

    move-result-object v1

    iget-object v2, p0, Ldmk;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ldnk;->a(Ljava/lang/String;Legk;)V

    goto :goto_0
.end method
