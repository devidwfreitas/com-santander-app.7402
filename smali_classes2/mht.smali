.class Lmht;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lmhs;


# direct methods
.method constructor <init>(Lmhs;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lmht;->b:Lmhs;

    iput-object p2, p0, Lmht;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lmht;->b:Lmhs;

    invoke-static {v0}, Lmhs;->a(Lmhs;)Lmhu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lmht;->b:Lmhs;

    invoke-static {v0}, Lmhs;->a(Lmhs;)Lmhu;

    move-result-object v0

    iget-object v1, p0, Lmht;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmhu;->a(Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method
