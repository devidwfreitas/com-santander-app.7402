.class Ldom;
.super Ldkf;


# instance fields
.field final synthetic a:Ldok;


# direct methods
.method constructor <init>(Ldok;Ldlv;)V
    .locals 0

    iput-object p1, p0, Ldom;->a:Ldok;

    invoke-direct {p0, p2}, Ldkf;-><init>(Ldlv;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Ldom;->a:Ldok;

    invoke-static {v0}, Ldok;->a(Ldok;)V

    return-void
.end method
