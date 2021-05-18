.class Lqp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lack;

.field final synthetic b:Lqn;


# direct methods
.method constructor <init>(Lqn;Lack;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lqp;->b:Lqn;

    iput-object p2, p0, Lqp;->a:Lack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lqp;->a:Lack;

    invoke-virtual {v0}, Lack;->onBackPressed()V

    .line 102
    return-void
.end method
