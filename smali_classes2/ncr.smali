.class public Lncr;
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
    .line 119
    iput-object p1, p0, Lncr;->a:Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lncr;->a:Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->a(Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;Z)V

    .line 123
    return-void
.end method
