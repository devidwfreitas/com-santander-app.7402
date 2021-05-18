.class public Lgus;
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
    .line 167
    iput-object p1, p0, Lgus;->a:Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lgus;->a:Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-static {v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->a(Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;)V

    .line 173
    iget-object v0, p0, Lgus;->a:Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-virtual {v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->b()V

    .line 174
    return-void
.end method
