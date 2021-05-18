.class Lfsm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lfsk;


# direct methods
.method constructor <init>(Lfsk;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lfsm;->a:Lfsk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lfsm;->a:Lfsk;

    invoke-static {v0}, Lfsk;->a(Lfsk;)Lfso;

    move-result-object v0

    invoke-interface {v0}, Lfso;->b()V

    .line 58
    return-void
.end method
