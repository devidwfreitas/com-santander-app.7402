.class public final enum Lmhv;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmhv;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmhv;

.field public static final enum INSTANCE:Lmhv;


# instance fields
.field private coverageId:J

.field private coverageName:Ljava/lang/String;

.field private flowCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkvo;",
            ">;"
        }
    .end annotation
.end field

.field private mapRequest:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lkuq;",
            "Lkva;",
            ">;"
        }
    .end annotation
.end field

.field private mapResponse:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lkuq;",
            "Lkvb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    new-instance v0, Lmhv;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lmhv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmhv;->INSTANCE:Lmhv;

    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Lmhv;

    sget-object v1, Lmhv;->INSTANCE:Lmhv;

    aput-object v1, v0, v2

    sput-object v0, Lmhv;->$VALUES:[Lmhv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmhv;->mapResponse:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmhv;->mapRequest:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmhv;->flowCache:Ljava/util/List;

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmhv;->coverageId:J

    return-void
.end method

.method private copyFlow(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkvo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lkvo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvo;

    .line 39
    new-instance v3, Lkvo;

    invoke-direct {v3}, Lkvo;-><init>()V

    .line 40
    invoke-virtual {v0}, Lkvo;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Lkvo;->a(I)V

    .line 41
    invoke-virtual {v0}, Lkvo;->b()Lkuq;

    move-result-object v0

    invoke-virtual {v3, v0}, Lkvo;->a(Lkuq;)V

    .line 42
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :cond_0
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lmhv;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lmhv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmhv;

    return-object v0
.end method

.method public static values()[Lmhv;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lmhv;->$VALUES:[Lmhv;

    invoke-virtual {v0}, [Lmhv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmhv;

    return-object v0
.end method


# virtual methods
.method public addRequest(Lkuq;Lkva;)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lmhv;->mapRequest:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-void
.end method

.method public addRequestList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkva;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkva;

    .line 158
    iget-object v2, p0, Lmhv;->mapRequest:Ljava/util/Map;

    invoke-virtual {v0}, Lkva;->g()Lkuq;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 160
    :cond_0
    return-void
.end method

.method public addResponse(Lkuq;Lkvb;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lmhv;->mapResponse:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lmhv;->mapRequest:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 53
    iget-object v0, p0, Lmhv;->mapResponse:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 54
    iget-object v0, p0, Lmhv;->flowCache:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lmhv;->flowCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmhv;->coverageId:J

    .line 58
    return-void
.end method

.method public clearRequest()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lmhv;->mapRequest:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lmhv;->mapRequest:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 154
    :cond_0
    return-void
.end method

.method public containsRequest(Lkuq;)Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lmhv;->mapRequest:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsResponse(Lkuq;)Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lmhv;->mapResponse:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAllRequest()Lkva;
    .locals 6

    .prologue
    .line 163
    new-instance v1, Lkva;

    invoke-direct {v1}, Lkva;-><init>()V

    .line 165
    iget-object v0, p0, Lmhv;->flowCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvo;

    .line 166
    sget-object v3, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {v0}, Lkvo;->b()Lkuq;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmhv;->getRequest(Lkuq;)Lkva;

    move-result-object v3

    .line 167
    if-eqz v3, :cond_0

    .line 168
    sget-object v4, Lmhw;->a:[I

    invoke-virtual {v0}, Lkvo;->b()Lkuq;

    move-result-object v0

    invoke-virtual {v0}, Lkuq;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 170
    :pswitch_0
    invoke-virtual {v3}, Lkva;->j()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkva;->b(Ljava/util/Date;)V

    .line 172
    invoke-virtual {v3}, Lkva;->r()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkva;->b(Ljava/lang/Long;)V

    goto :goto_0

    .line 176
    :pswitch_1
    invoke-virtual {v3}, Lkva;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkva;->a(Ljava/util/List;)V

    goto :goto_0

    .line 180
    :pswitch_2
    invoke-virtual {v3}, Lkva;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkva;->a(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v3}, Lkva;->k()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkva;->a(Ljava/lang/Double;)V

    goto :goto_0

    .line 185
    :pswitch_3
    invoke-virtual {v3}, Lkva;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkva;->e(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v3}, Lkva;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkva;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :pswitch_4
    invoke-virtual {v3}, Lkva;->b()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkva;->a(Ljava/util/Date;)V

    .line 191
    invoke-virtual {v3}, Lkva;->m()Lkvf;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkva;->a(Lkvf;)V

    goto :goto_0

    .line 198
    :cond_1
    return-object v1

    .line 168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getCountRequest()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lmhv;->mapResponse:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getCountResponse()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lmhv;->mapResponse:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getCoverageId()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lmhv;->coverageId:J

    return-wide v0
.end method

.method public getCoverageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lmhv;->coverageName:Ljava/lang/String;

    return-object v0
.end method

.method public getFlowCache()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkvo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lmhv;->flowCache:Ljava/util/List;

    invoke-direct {p0, v0}, Lmhv;->copyFlow(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMapRequest()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lkuq;",
            "Lkva;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lmhv;->mapRequest:Ljava/util/Map;

    return-object v0
.end method

.method public getMapResponse()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lkuq;",
            "Lkvb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lmhv;->mapResponse:Ljava/util/Map;

    return-object v0
.end method

.method public getRequest(Lkuq;)Lkva;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lmhv;->containsRequest(Lkuq;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lmhv;->mapRequest:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkva;

    .line 139
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResponse(Lkuq;)Lkvb;
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lmhv;->containsResponse(Lkuq;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lmhv;->mapResponse:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvb;

    .line 131
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeRequest(Lkuq;)Z
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lmhv;->containsRequest(Lkuq;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lmhv;->mapRequest:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeResponse(Lkuq;)Z
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lmhv;->containsResponse(Lkuq;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lmhv;->mapResponse:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCoverageId(J)V
    .locals 1

    .prologue
    .line 81
    iput-wide p1, p0, Lmhv;->coverageId:J

    .line 82
    return-void
.end method

.method public setCoverageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lmhv;->coverageName:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setFlowCache(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkvo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lmhv;->copyFlow(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmhv;->flowCache:Ljava/util/List;

    .line 34
    return-void
.end method

.method public setMapRequest(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lkuq;",
            "Lkva;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    iput-object p1, p0, Lmhv;->mapRequest:Ljava/util/Map;

    .line 111
    return-void
.end method

.method public setMapResponse(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lkuq;",
            "Lkvb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    iput-object p1, p0, Lmhv;->mapResponse:Ljava/util/Map;

    .line 115
    return-void
.end method
