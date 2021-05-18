.class Ldoh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldlv;

.field final synthetic b:I

.field final synthetic c:Ldkw;

.field final synthetic d:Ldog;


# direct methods
.method constructor <init>(Ldog;Ldlv;ILdkw;)V
    .locals 0

    iput-object p1, p0, Ldoh;->d:Ldog;

    iput-object p2, p0, Ldoh;->a:Ldlv;

    iput p3, p0, Ldoh;->b:I

    iput-object p4, p0, Ldoh;->c:Ldkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ldoh;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->N()V

    iget-object v0, p0, Ldoh;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->L()V

    iget-object v0, p0, Ldoh;->d:Ldog;

    invoke-static {v0}, Ldog;->b(Ldog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ldoi;

    invoke-direct {v1, p0}, Ldoi;-><init>(Ldoh;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
