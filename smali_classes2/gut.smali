.class public Lgut;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lgut;->a:Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lgut;->a:Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-static {v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->b(Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;)V

    .line 182
    iget-object v0, p0, Lgut;->a:Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-virtual {v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c()V

    .line 183
    return-void
.end method
