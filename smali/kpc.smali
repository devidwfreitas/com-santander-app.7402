.class Lkpc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lkpd;
    .annotation runtime Leks;
        a = "address"
    .end annotation
.end field

.field b:Lkpa;
    .annotation runtime Leks;
        a = "problem"
    .end annotation
.end field

.field c:Lkpg;
    .annotation runtime Leks;
        a = "subService"
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkox;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "phones"
    .end annotation
.end field

.field e:Ljava/lang/String;
    .annotation runtime Leks;
        a = "schedulingDate"
    .end annotation
.end field

.field final synthetic f:Lkoo;


# direct methods
.method private constructor <init>(Lkoo;)V
    .locals 1

    .prologue
    .line 186
    iput-object p1, p0, Lkpc;->f:Lkoo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Lkpd;

    invoke-direct {v0, p0}, Lkpd;-><init>(Lkpc;)V

    iput-object v0, p0, Lkpc;->a:Lkpd;

    .line 192
    new-instance v0, Lkpg;

    invoke-direct {v0, p0}, Lkpg;-><init>(Lkpc;)V

    iput-object v0, p0, Lkpc;->c:Lkpg;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkpc;->d:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lkoo;Lkop;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lkpc;-><init>(Lkoo;)V

    return-void
.end method
