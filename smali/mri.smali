.class public Lmri;
.super Lgnb;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "arg0"
.end annotation


# instance fields
.field private text:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lgnb;-><init>()V

    .line 21
    iput-object p1, p0, Lmri;->text:Ljava/lang/String;

    .line 22
    return-void
.end method
