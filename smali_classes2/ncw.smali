.class public Lncw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lncw;->a:Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lncw;->a:Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;

    invoke-static {v0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->b(Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;)Lnds;

    move-result-object v0

    invoke-interface {v0}, Lnds;->d()V

    .line 269
    return-void
.end method
