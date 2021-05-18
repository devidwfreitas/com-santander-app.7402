.class public Lddj;
.super Ljava/lang/Object;


# instance fields
.field protected final d:Lddk;


# direct methods
.method protected constructor <init>(Lddk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lddj;->d:Lddk;

    return-void
.end method

.method public static a(Landroid/app/Activity;)Lddk;
    .locals 1

    new-instance v0, Lddi;

    invoke-direct {v0, p0}, Lddi;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lddj;->b(Lddi;)Lddk;

    move-result-object v0

    return-object v0
.end method

.method protected static b(Lddi;)Lddk;
    .locals 1

    invoke-virtual {p0}, Lddi;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddi;->c()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ldef;->a(Landroid/support/v4/app/FragmentActivity;)Ldef;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lddi;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lddl;->a(Landroid/app/Activity;)Lddl;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public b()V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public f()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lddj;->d:Lddk;

    invoke-interface {v0}, Lddk;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method
