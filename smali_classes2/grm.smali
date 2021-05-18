.class public Lgrm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/santander/app/components/view/PlayGifView/PlayGifView;


# direct methods
.method public constructor <init>(Lcom/santander/app/components/view/PlayGifView/PlayGifView;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lgrm;->a:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lgrm;->a:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    invoke-virtual {v0}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->a()V

    .line 60
    return-void
.end method
