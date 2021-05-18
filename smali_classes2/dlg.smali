.class Ldlg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ldlf;


# direct methods
.method constructor <init>(Ldlf;Z)V
    .locals 0

    iput-object p1, p0, Ldlg;->b:Ldlf;

    iput-boolean p2, p0, Ldlg;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ldlg;->b:Ldlf;

    invoke-static {v0}, Ldlf;->a(Ldlf;)Ldlv;

    move-result-object v0

    iget-boolean v1, p0, Ldlg;->a:Z

    invoke-virtual {v0, v1}, Ldlv;->a(Z)V

    return-void
.end method
