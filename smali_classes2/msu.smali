.class public Lmsu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/transfergolden/presentation/ExtensionActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/transfergolden/presentation/ExtensionActivity;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lmsu;->a:Lcom/santander/app/transfergolden/presentation/ExtensionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lmsu;->a:Lcom/santander/app/transfergolden/presentation/ExtensionActivity;

    invoke-virtual {v0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->finish()V

    .line 132
    return-void
.end method
