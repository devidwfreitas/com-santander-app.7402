.class Ldbt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldbs;


# direct methods
.method constructor <init>(Ldbs;)V
    .locals 0

    iput-object p1, p0, Ldbt;->a:Ldbs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ldbt;->a:Ldbs;

    invoke-static {v0}, Ldbs;->b(Ldbs;)Lcwn;

    move-result-object v0

    iget-object v1, p0, Ldbt;->a:Ldbs;

    invoke-static {v1}, Ldbs;->a(Ldbs;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcwn;->f(Landroid/content/Context;)V

    return-void
.end method
