.class Lkow;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "areaCode"
    .end annotation
.end field

.field b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "number"
    .end annotation
.end field

.field final synthetic c:Lkoo;


# direct methods
.method private constructor <init>(Lkoo;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lkow;->c:Lkoo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lkoo;Lkop;)V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lkow;-><init>(Lkoo;)V

    return-void
.end method
