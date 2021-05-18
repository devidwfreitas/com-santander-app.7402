.class public Lguy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lguy;->a:Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lguy;->a:Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;

    invoke-virtual {v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->a()V

    .line 113
    return-void
.end method
