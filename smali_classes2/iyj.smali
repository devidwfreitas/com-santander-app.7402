.class Liyj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Liyi;


# direct methods
.method constructor <init>(Liyi;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Liyj;->a:Liyi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 244
    invoke-static {}, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->f()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 245
    return-void
.end method
