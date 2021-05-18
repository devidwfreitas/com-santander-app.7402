.class Lhcb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lhca;


# direct methods
.method constructor <init>(Lhca;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lhcb;->b:Lhca;

    iput-object p2, p0, Lhcb;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lhcb;->b:Lhca;

    iget-object v1, p0, Lhcb;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lhca;->a(Lhca;Landroid/content/Context;)V

    .line 43
    return-void
.end method
