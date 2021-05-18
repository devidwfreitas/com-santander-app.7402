.class Llmo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lllx;


# instance fields
.field final synthetic a:Llmn;


# direct methods
.method constructor <init>(Llmn;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Llmo;->a:Llmn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Llmo;->a:Llmn;

    iget-object v0, v0, Llmn;->a:Llmi;

    invoke-static {v0}, Llmi;->g(Llmi;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    return-void
.end method
