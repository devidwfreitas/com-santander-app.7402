.class Ldmx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ldmw;


# direct methods
.method constructor <init>(Ldmw;Z)V
    .locals 0

    iput-object p1, p0, Ldmx;->b:Ldmw;

    iput-boolean p2, p0, Ldmx;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ldmx;->b:Ldmw;

    iget-boolean v1, p0, Ldmx;->a:Z

    invoke-static {v0, v1}, Ldmw;->a(Ldmw;Z)V

    return-void
.end method
