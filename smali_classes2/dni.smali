.class Ldni;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:J

.field final synthetic e:Ldmw;


# direct methods
.method constructor <init>(Ldmw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 1

    iput-object p1, p0, Ldni;->e:Ldmw;

    iput-object p2, p0, Ldni;->a:Ljava/lang/String;

    iput-object p3, p0, Ldni;->b:Ljava/lang/String;

    iput-object p4, p0, Ldni;->c:Ljava/lang/Object;

    iput-wide p5, p0, Ldni;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Ldni;->e:Ldmw;

    iget-object v1, p0, Ldni;->a:Ljava/lang/String;

    iget-object v2, p0, Ldni;->b:Ljava/lang/String;

    iget-object v3, p0, Ldni;->c:Ljava/lang/Object;

    iget-wide v4, p0, Ldni;->d:J

    invoke-static/range {v0 .. v5}, Ldmw;->a(Ldmw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method
