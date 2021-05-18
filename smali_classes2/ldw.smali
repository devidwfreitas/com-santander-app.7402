.class Lldw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llds;


# direct methods
.method constructor <init>(Llds;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lldw;->a:Llds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lldw;->a:Llds;

    invoke-static {v0}, Llds;->d(Llds;)Lldx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lldw;->a:Llds;

    invoke-static {v0}, Llds;->e(Llds;)Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lldw;->a:Llds;

    invoke-static {v1}, Llds;->f(Llds;)Ljava/lang/String;

    move-result-object v1

    .line 118
    iget-object v2, p0, Lldw;->a:Llds;

    invoke-static {v2}, Llds;->d(Llds;)Lldx;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lldx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    return-void
.end method
