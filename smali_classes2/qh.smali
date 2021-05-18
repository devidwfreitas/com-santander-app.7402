.class Lqh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lpc;


# direct methods
.method constructor <init>(Lpc;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lqh;->a:Lpc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lqh;->a:Lpc;

    invoke-static {v0}, Lpc;->D(Lpc;)Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->requestFocus()Z

    .line 368
    return-void
.end method
